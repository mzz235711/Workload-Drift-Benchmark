/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>54 AND p.Score<183 AND p.CommentCount>2 AND p.CommentCount<39 AND u.DownVotes>295 AND u.DownVotes<1755 AND v.CreationDate>'2009-06-17 20:23:10'::timestamp AND v.CreationDate<'2014-07-20 04:06:50'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<15 AND b.Date>'2011-04-01 12:30:56'::timestamp AND b.Date<'2011-12-07 18:54:44'::timestamp;

