/*+ HashJoin(ph u b c)
 HashJoin(u b c)
 HashJoin(u b)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(b)
 SeqScan(c)
 Leading((ph ((u b) c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND ph.CreationDate>='2010-07-22 11:58:21'::timestamp AND ph.CreationDate<='2014-09-04 03:10:42'::timestamp AND u.Views>=0 AND u.Views<=141 AND u.UpVotes>=0;

