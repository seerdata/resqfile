
require_relative './post'
require_relative './rulecomparator'
require_relative './ruleobserver'
require_relative './math/msgmath'
require 'json'

class Poster

  def initialize
    @post = Post.new
  end

  def publish(options)
    n = options.n
    message = get_message_type(options)
    messages = message.build_n_messages(n)
    @post.process_data(options,messages)
    if options.verbose == true
      print options.n, " rules were published to the api"; puts
    end
  end

  def get_message_type(options)
    if options.z == 'comparator'
      if options.verbose
        puts 'Inside Comparator'
      end
      RuleComparator.new(options)
    elsif options.z == 'observer'
      if options.verbose
        puts 'Inside Observer'
      end
      RuleObserver.new(options)
    elsif options.z == 'event'
      if options.verbose
        puts 'Inside Math'
      end
      MsgMath.new(options)
    else
      print 'poster.rb ', options.z, ' is not a supported rule type'
      puts
      exit
    end
  end
end
