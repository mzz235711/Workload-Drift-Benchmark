/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<23 AND p.CommentCount>1 AND p.CommentCount<34 AND u.DownVotes>31 AND u.DownVotes<265 AND v.CreationDate>'2009-04-25 02:00:24'::timestamp AND v.CreationDate<'2011-12-21 01:29:03'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<10 AND b.Date>'2012-03-28 11:02:17'::timestamp AND b.Date<'2014-05-22 22:08:25'::timestamp;

