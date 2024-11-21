class App::Controllers::PruebasController < ApplicationController
  ### Day 1
  #Part 1
  def puzle(valor)
    return unless valor.present?
    data = valor.split('')
    contador = 0
    longitud = data.length
    data.each_with_index do |number, index|
      contador += number.to_i if index < longitud - 1 && number == data[index + 1]
      contador += number.to_i if longitud - 1 == index && data.last == data.first
    end
    contador
  end

  #Part 2
  def puzle_two(valor)
    return unless valor.present?
    data = valor.split('')
    contador = 0
    longitud = data.length
    divisor = longitud / 2
    data.each_with_index do |number, index|
      contador += (2 * number.to_i) if index + (divisor) < longitud && number == data[index + (divisor)]
    end
    contador
  end

  ### Day 2
  #Part 1
  def checksum(matrizz)
    ## 5 1 9 5<7 5 3<2 4 6 8
    return if matrizz == ''

    filas= matrizz.split('|')

    suma=0
    filas.each do |valores|
      valores_fila= valores.split(' ')

      valores_fila=valores_fila.map(&to_s)

      sort_array= valores_fila.sort

      suma+= (sort_array.last - sort_array.first)
    end

    suma
  end
end
