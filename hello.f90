program hello
  
  implicit none
  write(*,*) 'Hello world from ', &
    this_image() , 'of', num_images()

end program hello
