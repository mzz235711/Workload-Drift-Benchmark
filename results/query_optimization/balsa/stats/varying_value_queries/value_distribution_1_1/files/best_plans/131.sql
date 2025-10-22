/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 IndexScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<137 AND p.CommentCount>19 AND p.CommentCount<28 AND u.DownVotes>277 AND u.DownVotes<1799 AND v.CreationDate>'2010-05-26 08:19:05'::timestamp AND v.CreationDate<'2011-09-03 09:52:53'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<15 AND b.Date>'2012-12-28 07:26:02'::timestamp AND b.Date<'2014-09-03 10:42:58'::timestamp;

