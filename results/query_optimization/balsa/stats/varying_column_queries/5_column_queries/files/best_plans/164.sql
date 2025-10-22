/*+ HashJoin(ph u b c)
 HashJoin(u b c)
 HashJoin(u b)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(b)
 SeqScan(c)
 Leading((ph ((u b) c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND ph.PostHistoryTypeId=2 AND b.Date>='2010-09-05 09:24:01'::timestamp AND u.DownVotes>=0 AND u.UpVotes>=0;

