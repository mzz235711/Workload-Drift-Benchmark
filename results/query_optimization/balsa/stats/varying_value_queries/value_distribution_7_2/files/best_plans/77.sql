/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>106 AND p.Score<187 AND p.CommentCount>1 AND p.CommentCount<42 AND u.DownVotes>34 AND u.DownVotes<1310 AND v.CreationDate>'2010-12-04 18:55:20'::timestamp AND v.CreationDate<'2013-11-27 00:46:17'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2011-09-05 22:52:25'::timestamp AND b.Date<'2013-08-19 15:22:32'::timestamp;

