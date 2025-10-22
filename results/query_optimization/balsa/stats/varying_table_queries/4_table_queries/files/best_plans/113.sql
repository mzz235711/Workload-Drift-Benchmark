/*+ MergeJoin(c ph u b)
 MergeJoin(ph u b)
 HashJoin(u b)
 SeqScan(c)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(b)
 Leading((c (ph (u b)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=1 AND c.CreationDate<='2014-08-27 12:52:00'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-10-01 19:23:05'::timestamp AND ph.CreationDate<='2014-08-13 08:17:37'::timestamp AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=163 AND u.DownVotes<=3 AND u.UpVotes<=27 AND u.CreationDate>='2010-09-01 21:01:18'::timestamp;

