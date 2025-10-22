/*+ NestLoop(u p b v)
 HashJoin(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 SeqScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>13 AND p.Score<146 AND p.CommentCount>1 AND p.CommentCount<16 AND u.DownVotes>550 AND u.DownVotes<1235 AND v.CreationDate>'2012-03-30 06:41:33'::timestamp AND v.CreationDate<'2013-11-13 20:15:31'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2011-01-07 00:31:47'::timestamp AND b.Date<'2011-02-16 23:12:18'::timestamp;

