/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>70 AND p.Score<115 AND p.CommentCount>5 AND p.CommentCount<18 AND u.DownVotes>309 AND u.DownVotes<1270 AND v.CreationDate>'2011-03-01 02:24:50'::timestamp AND v.CreationDate<'2011-06-23 01:09:47'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2011-05-01 22:26:00'::timestamp AND b.Date<'2013-03-05 19:45:36'::timestamp;

