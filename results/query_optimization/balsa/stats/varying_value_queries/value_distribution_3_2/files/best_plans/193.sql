/*+ MergeJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<41 AND p.CommentCount>12 AND p.CommentCount<22 AND u.DownVotes>450 AND u.DownVotes<988 AND v.CreationDate>'2009-06-18 00:51:41'::timestamp AND v.CreationDate<'2013-02-01 17:40:52'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2011-12-29 13:40:43'::timestamp AND b.Date<'2012-12-07 03:44:18'::timestamp;

