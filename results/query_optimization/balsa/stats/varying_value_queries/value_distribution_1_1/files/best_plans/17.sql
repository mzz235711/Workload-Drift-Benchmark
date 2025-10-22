/*+ MergeJoin(b p v u)
 MergeJoin(p v u)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b ((p v) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>34 AND p.Score<182 AND p.CommentCount>1 AND p.CommentCount<16 AND u.DownVotes>70 AND u.DownVotes<1630 AND v.CreationDate>'2009-06-19 18:29:31'::timestamp AND v.CreationDate<'2014-04-15 04:41:46'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<15 AND b.Date>'2012-10-23 17:31:24'::timestamp AND b.Date<'2014-03-16 06:44:12'::timestamp;

