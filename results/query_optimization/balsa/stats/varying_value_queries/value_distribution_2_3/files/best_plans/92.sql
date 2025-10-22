/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 NestLoop(u p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<104 AND p.CommentCount>1 AND p.CommentCount<30 AND u.DownVotes>443 AND u.DownVotes<1541 AND v.CreationDate>'2010-12-08 15:34:28'::timestamp AND v.CreationDate<'2013-11-30 00:37:19'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<12 AND b.Date>'2010-08-03 03:21:19'::timestamp AND b.Date<'2010-11-12 10:58:28'::timestamp;

