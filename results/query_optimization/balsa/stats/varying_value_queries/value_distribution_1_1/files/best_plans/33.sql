/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<51 AND p.CommentCount>4 AND p.CommentCount<37 AND u.DownVotes>411 AND u.DownVotes<1058 AND v.CreationDate>'2009-07-16 19:29:29'::timestamp AND v.CreationDate<'2013-01-07 07:31:44'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<10 AND b.Date>'2013-05-05 07:59:15'::timestamp AND b.Date<'2013-11-24 10:30:58'::timestamp;

