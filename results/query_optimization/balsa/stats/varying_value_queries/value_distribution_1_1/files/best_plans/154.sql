/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>46 AND p.Score<143 AND p.CommentCount>0 AND p.CommentCount<43 AND u.DownVotes>56 AND u.DownVotes<287 AND v.CreationDate>'2012-08-28 15:54:34'::timestamp AND v.CreationDate<'2013-03-31 21:37:42'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2013-11-20 21:46:03'::timestamp AND b.Date<'2014-08-12 00:41:40'::timestamp;

