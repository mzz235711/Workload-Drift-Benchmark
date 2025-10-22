/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>125 AND p.Score<167 AND p.CommentCount>5 AND p.CommentCount<13 AND u.DownVotes>198 AND u.DownVotes<1413 AND v.CreationDate>'2010-09-10 21:50:02'::timestamp AND v.CreationDate<'2012-03-17 22:08:56'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2011-06-09 10:41:57'::timestamp AND b.Date<'2014-04-06 17:02:10'::timestamp;

