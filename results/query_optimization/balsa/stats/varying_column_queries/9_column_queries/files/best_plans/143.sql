/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=1 AND c.CreationDate>='2010-07-25 20:15:33'::timestamp AND c.CreationDate<='2014-09-12 13:06:49'::timestamp AND ph.CreationDate>='2010-09-23 03:57:03'::timestamp AND u.Reputation>=1 AND u.Reputation<=4536 AND u.DownVotes=0 AND u.CreationDate>='2011-01-14 08:56:54'::timestamp AND u.CreationDate<='2014-09-04 07:27:06'::timestamp;

