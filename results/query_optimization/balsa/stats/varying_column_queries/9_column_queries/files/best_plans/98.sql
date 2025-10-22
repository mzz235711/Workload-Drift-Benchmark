/*+ HashJoin(ph u p b c)
 HashJoin(ph u p b)
 HashJoin(ph u p)
 HashJoin(ph u)
 IndexScan(ph)
 SeqScan(u)
 IndexScan(p)
 SeqScan(b)
 IndexScan(c)
 Leading(((((ph u) p) b) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.CreationDate<='2014-09-04 13:51:31'::timestamp AND p.Score>=-1 AND p.AnswerCount=1 AND ph.PostHistoryTypeId=3 AND ph.CreationDate>='2011-01-10 14:53:32'::timestamp AND u.Reputation<=150 AND u.DownVotes=0 AND u.UpVotes<=21 AND u.CreationDate<='2014-08-21 14:19:27'::timestamp;

