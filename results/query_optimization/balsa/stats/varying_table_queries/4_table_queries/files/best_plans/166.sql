/*+ MergeJoin(ph u p b)
 MergeJoin(ph u p)
 MergeJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((ph (u p)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-08-09 08:19:59'::timestamp AND ph.CreationDate<='2014-08-24 12:48:32'::timestamp AND p.CommentCount>=0 AND u.Reputation>=1 AND u.UpVotes>=0 AND u.UpVotes<=196 AND u.CreationDate<='2014-08-25 22:57:38'::timestamp AND b.Date<='2014-09-12 14:06:21'::timestamp;

