/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<138 AND p.CommentCount>5 AND p.CommentCount<38 AND u.DownVotes>502 AND u.DownVotes<1785 AND v.CreationDate>'2010-08-23 12:25:51'::timestamp AND v.CreationDate<'2012-12-07 03:32:03'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<15 AND b.Date>'2013-02-15 01:23:42'::timestamp AND b.Date<'2013-11-30 10:22:28'::timestamp;

