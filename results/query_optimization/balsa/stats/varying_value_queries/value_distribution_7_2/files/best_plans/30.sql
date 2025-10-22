/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>9 AND p.Score<96 AND p.CommentCount>0 AND p.CommentCount<15 AND u.DownVotes>528 AND u.DownVotes<1411 AND v.CreationDate>'2009-05-21 21:30:04'::timestamp AND v.CreationDate<'2011-01-26 20:53:16'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2011-07-18 04:42:36'::timestamp AND b.Date<'2012-10-05 18:55:57'::timestamp;

