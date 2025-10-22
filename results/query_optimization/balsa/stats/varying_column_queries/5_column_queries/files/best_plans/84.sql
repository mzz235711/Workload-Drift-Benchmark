/*+ HashJoin(ph u b c)
 HashJoin(u b c)
 HashJoin(u b)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(b)
 SeqScan(c)
 Leading((ph ((u b) c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.CreationDate>='2010-08-02 19:29:21'::timestamp AND c.CreationDate<='2014-09-09 20:55:27'::timestamp AND u.Views>=0 AND u.UpVotes>=0 AND u.UpVotes<=9;

