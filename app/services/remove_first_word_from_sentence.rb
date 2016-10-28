class RemoveFirstWordFromSentence
  def call sentence
    sentence.split(' ').drop(1).join(' ')
  end
end