/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>40 AND p.Score<119 AND p.CommentCount>2 AND p.CommentCount<5 AND u.DownVotes>193 AND u.DownVotes<1384 AND v.CreationDate>'2009-07-28 05:38:03'::timestamp AND v.CreationDate<'2011-06-07 14:34:36'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2013-04-18 18:17:07'::timestamp AND b.Date<'2013-09-28 07:34:07'::timestamp;

