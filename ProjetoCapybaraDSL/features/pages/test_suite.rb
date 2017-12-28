class TestSuite

  include Capybara::DSL

  def initialize
    @base = PageBase.new
  end

  def test_form_fill(texto, language, ruby, versions)

    @base.preencher(text, texto)
    combobox.select(language)

    case ruby
      when 'A programming language'
        choose 'A programming language'
      when 'A gem'
        choose 'A gem'
      else
        'Both'
        choose 'Both'
    end
    #binding.pry
    case versions
      when '1.8.6'
        @base.clique(versions01)
      when '1.8.7'
        @base.clique(versions02)
      when '1.9.2'
        @base.clique(versions03)
    end

    puts text.inspect
  end

  def submit
    @base.clique(submit)
  end

  def title
    @base.title
  end

  def close
    @base.quit
  end

  def text
    @text = page.find_by_id('entry_1000000')
  end

  def combobox
    @combobox = page.find(:css, 'select[id*=entry_1000001]')
  end

  def both
    @both = page.find_by_id('group_1000003_3')
  end

  def versions01
    @versions01 = page.find_by_id('group_1000004_1')
  end

  def versions02
    @versions02 = page.find_by_id('group_1000004_2')
  end

  def versions03
    @versions03 = page.find_by_id('group_1000004_3')
  end

  def submit
    @submit = page.find(:css, 'input[name*=submit]')
  end

end
