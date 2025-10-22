/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<68 AND p.CommentCount>10 AND p.CommentCount<44 AND u.DownVotes>188 AND u.DownVotes<1064 AND v.CreationDate>'2010-01-24 20:41:03'::timestamp AND v.CreationDate<'2011-05-16 23:46:19'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2010-08-16 01:50:46'::timestamp AND b.Date<'2013-01-22 13:18:40'::timestamp;

