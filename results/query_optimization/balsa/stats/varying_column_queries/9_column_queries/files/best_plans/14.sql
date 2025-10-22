/*+ HashJoin(ph u b v)
 HashJoin(ph u b)
 HashJoin(ph u)
 IndexScan(ph)
 SeqScan(u)
 SeqScan(b)
 SeqScan(v)
 Leading((((ph u) b) v)) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=5 AND u.Reputation>=1 AND u.Reputation<=6216 AND u.DownVotes<=1 AND u.UpVotes<=2122 AND u.CreationDate>='2010-07-27 11:31:20'::timestamp AND u.CreationDate<='2014-08-31 06:43:12'::timestamp AND b.Date>='2010-07-21 06:53:13'::timestamp AND b.Date<='2014-09-04 14:05:16'::timestamp;

