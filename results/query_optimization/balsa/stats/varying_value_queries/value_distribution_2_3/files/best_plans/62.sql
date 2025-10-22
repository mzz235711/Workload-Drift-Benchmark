/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 NestLoop(u p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-13 AND p.Score<70 AND p.CommentCount>6 AND p.CommentCount<22 AND u.DownVotes>532 AND u.DownVotes<1833 AND v.CreationDate>'2010-01-29 22:20:20'::timestamp AND v.CreationDate<'2013-01-01 17:04:41'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<9 AND b.Date>'2010-11-04 14:48:19'::timestamp AND b.Date<'2013-02-17 08:39:51'::timestamp;

