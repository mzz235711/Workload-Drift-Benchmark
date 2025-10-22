/*+ HashJoin(ph u p b)
 MergeJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((ph (u p)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.CreationDate>='2010-09-06 18:24:38'::timestamp AND ph.CreationDate<='2014-08-25 00:30:26'::timestamp AND p.Score>=-1 AND p.Score<=17 AND p.CreationDate>='2010-07-20 22:26:26'::timestamp AND p.CreationDate<='2014-09-05 14:31:25'::timestamp AND u.Reputation<=213 AND u.Views<=20 AND u.DownVotes=0 AND b.Date<='2014-09-03 14:46:08'::timestamp;

