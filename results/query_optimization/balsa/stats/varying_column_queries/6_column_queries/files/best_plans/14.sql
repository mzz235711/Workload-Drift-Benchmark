/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND c.CreationDate<='2014-09-07 19:32:54'::timestamp AND ph.CreationDate>='2010-09-16 07:11:03'::timestamp AND ph.CreationDate<='2014-05-30 22:20:45'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=31;

