/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<50 AND p.CommentCount>13 AND p.CommentCount<35 AND u.DownVotes>762 AND u.DownVotes<1697 AND v.CreationDate>'2010-03-31 20:09:21'::timestamp AND v.CreationDate<'2012-08-13 16:15:50'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2011-12-08 16:17:53'::timestamp AND b.Date<'2014-05-30 23:02:25'::timestamp;

