/*+ HashJoin(b c u ph)
 HashJoin(c u ph)
 HashJoin(u ph)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 IndexScan(ph)
 Leading((b (c (u ph)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND ph.CreationDate='2013-11-26 17:37:43'::timestamp AND u.UpVotes>=0;

