/*+ HashJoin(c ph u b)
 HashJoin(ph u b)
 HashJoin(u b)
 SeqScan(c)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(b)
 Leading((c (ph (u b)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=2 AND u.Reputation>=1 AND u.Reputation<=391 AND u.Views>=0 AND u.Views<=30 AND u.DownVotes<=30 AND u.CreationDate>='2010-08-09 20:28:47'::timestamp;

