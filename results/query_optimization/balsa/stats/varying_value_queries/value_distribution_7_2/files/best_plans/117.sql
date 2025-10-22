/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>11 AND p.Score<179 AND p.CommentCount>8 AND p.CommentCount<34 AND u.DownVotes>641 AND u.DownVotes<1413 AND v.CreationDate>'2010-10-30 14:11:30'::timestamp AND v.CreationDate<'2011-08-23 14:28:49'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2011-04-29 05:42:21'::timestamp AND b.Date<'2013-10-16 16:39:42'::timestamp;

