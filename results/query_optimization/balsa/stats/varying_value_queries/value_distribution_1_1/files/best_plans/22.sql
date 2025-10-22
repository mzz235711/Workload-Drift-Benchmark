/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 IndexScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>6 AND p.Score<68 AND p.CommentCount>8 AND p.CommentCount<28 AND u.DownVotes>42 AND u.DownVotes<1763 AND v.CreationDate>'2009-03-09 22:47:32'::timestamp AND v.CreationDate<'2010-08-20 07:22:54'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<7 AND b.Date>'2013-09-22 01:46:23'::timestamp AND b.Date<'2013-11-30 02:23:42'::timestamp;

