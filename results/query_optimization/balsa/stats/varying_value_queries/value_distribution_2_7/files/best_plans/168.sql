/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<41 AND p.CommentCount>12 AND p.CommentCount<24 AND u.DownVotes>26 AND u.DownVotes<1067 AND v.CreationDate>'2011-08-26 07:28:08'::timestamp AND v.CreationDate<'2012-09-01 18:42:28'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<11 AND b.Date>'2012-02-14 17:23:58'::timestamp AND b.Date<'2013-05-03 14:38:27'::timestamp;

