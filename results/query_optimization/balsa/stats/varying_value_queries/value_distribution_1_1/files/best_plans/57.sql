/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 IndexScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<127 AND p.CommentCount>7 AND p.CommentCount<16 AND u.DownVotes>12 AND u.DownVotes<940 AND v.CreationDate>'2009-09-30 06:44:53'::timestamp AND v.CreationDate<'2011-07-05 13:24:18'::timestamp AND v.VoteTypeId>10 AND v.VoteTypeId<12 AND b.Date>'2010-10-13 00:36:36'::timestamp AND b.Date<'2014-02-09 18:42:33'::timestamp;

