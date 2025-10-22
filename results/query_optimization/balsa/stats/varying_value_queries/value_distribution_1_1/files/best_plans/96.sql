/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<169 AND p.CommentCount>14 AND p.CommentCount<42 AND u.DownVotes>395 AND u.DownVotes<1408 AND v.CreationDate>'2011-04-03 06:58:57'::timestamp AND v.CreationDate<'2013-12-07 05:15:02'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<10 AND b.Date>'2010-09-03 04:03:52'::timestamp AND b.Date<'2011-03-17 05:52:58'::timestamp;

