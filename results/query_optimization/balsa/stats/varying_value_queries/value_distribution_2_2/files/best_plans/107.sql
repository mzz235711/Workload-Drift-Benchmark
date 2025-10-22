/*+ HashJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 SeqScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>13 AND p.Score<87 AND p.CommentCount>4 AND p.CommentCount<16 AND u.DownVotes>436 AND u.DownVotes<1345 AND v.CreationDate>'2010-07-11 06:45:40'::timestamp AND v.CreationDate<'2012-07-31 17:22:22'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-03-13 03:40:16'::timestamp AND b.Date<'2013-01-08 18:25:32'::timestamp;

