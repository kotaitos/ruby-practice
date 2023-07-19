require 'date'
require 'time'


class TimeTrackingTool
  attr_accessor :tasks
  
  def initialize(filepath)
    @filepath = filepath
    load_tasks
  end

  def start(task_name)
    task = find_or_create_task(task_name)

    if task[:start_time] != nil
      puts "タスク「#{task_name}」はすでに開始しています"
      return
    end
    
    task[:start_time] = Time.now
    save_tasks
    puts "タスク「#{task_name}」を開始しました"
  end

  def finish(task_name)
    task = find_task(task_name)

    if task.nil?
      puts "タスク「#{task_name}」は存在しません"
    elsif task[:start_time].nil?
      puts "タスク「#{task_name}」は開始していません"
    elsif task[:end_time] != nil
      puts "タスク「#{task_name}」はすでに終了しています"
    else
      task[:end_time] = Time.now
      save_tasks
      puts "タスク「#{task_name}」を終了しました"
    end
  end

  def show_today
    today = Date.today
    tasks = @tasks.select { |task| task[:start_time].to_date == today }
    puts "本日のタスク一覧（タスク名、開始時間、終了時間、実績時間）と本日の作業合計時間"
    puts tasks.map { |task|
      [task[:name], task[:start_time].strftime("%Y-%m-%d %H:%M:%S"), task[:end_time].strftime("%Y-%m-%d %H:%M:%S"), format_duration(task[:end_time] - task[:start_time])]
    }.sort_by { |task| task[2] }.map { |task|
      "#{task[0]} : #{task[1]} - #{task[2]} = #{task[3]}"
    }.join("\n")
    puts "本日の作業合計時間: #{format_duration(tasks.map { |task| task[:end_time] - task[:start_time] }.inject(:+))}"
  end

  def show_week
    end_date = Date.today
    start_date = end_date - 6
    total_duration = 0
    (start_date..end_date).each do |date|
      daily_tasks = @tasks.select { |task| task[:start_time]&.to_date == date }
      total_duration = daily_tasks.map { |task| task[:end_time] - task[:start_time] }.inject(:+)
      puts "#{date}: #{format_duration(total_duration)}"
    end
  end

  private

  def load_tasks
    @tasks = []

    if !File.exist?(@filepath)
      return
    end

    File.open(@filepath, 'r') do |f|
      f.each_line do |line|
        task_name, start_time, end_time = line.chomp.split(',')
        start_time = Time.parse(start_time) unless start_time.nil?
        end_time = Time.parse(end_time) unless end_time.nil?
        @tasks << { name: task_name, start_time: start_time, end_time: end_time }
      end
    end
  end

  def save_tasks
    File.open(@filepath, 'w') do |f|
      @tasks.each do |task|
        f.puts "#{task[:name]},#{task[:start_time]&.strftime('%Y-%m-%d %H:%M:%S')},#{task[:end_time]&.strftime('%Y-%m-%d %H:%M:%S')}"
      end
    end
  end

  def find_or_create_task(task_name)
    task = find_task(task_name)
    return task unless task.nil?

    @tasks << { name: task_name, start_time: nil, end_time: nil }
    return @tasks.last
  end

  def find_task(task_name)
    @tasks.find { |task| task[:name] == task_name }
  end

  def format_duration(duration)
    if duration.nil?
      return '00h 00m 00s'
    end
    
    hours = (duration / 3600).floor
    minutes = ((duration % 3600) / 60).floor
    seconds = (duration % 60).floor
    return "#{hours}h #{minutes}m #{seconds}s"
  end

  public

  def execute_command(option, task_name = nil)
    if task_name.nil?
      show_usage
      return
    end
    
    case option
    when '-s', '--start'
      start(task_name)
    when '-f', '--finish'
      finish(task_name)
    when '-st', '--show-today'
      show_today
    when '-sw', '--show-week'
      show_week
    else
      show_usage
    end
  end

  def show_usage
    puts "Usage: ruby time_tracking_tool.rb [option]"
    puts "option:"
    puts "  -s <task_name> / --start <task_name> : タスク開始の時間を記録"
    puts "  -f <task_name> / --finish <task_name> : タスク終了の時間を記録"
    puts "  -st / --show-today : 本日のタスク一覧（タスク名、開始時間、終了時間、実績時間）と本日の作業合計時間を表示"
    puts "  -sw / --show-week : 直近7日間の日別作業時間を表示"
  end

  def run(argv)
    if argv.length == 1
      execute_command(argv[0])
    elsif argv.length == 2
      execute_command(argv[0], argv[1])
    else
      show_usage
    end
  end
end

if __FILE__ == $0
  filepath = 'tasks.csv'
  time_tracking_tool = TimeTrackingTool.new(filepath)
  time_tracking_tool.run(ARGV)
end
