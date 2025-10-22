/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<161 AND p.CommentCount>1 AND p.CommentCount<4 AND u.DownVotes>691 AND u.DownVotes<1019 AND v.CreationDate>'2011-08-08 17:33:04'::timestamp AND v.CreationDate<'2014-04-06 09:33:00'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<11 AND b.Date>'2011-11-24 20:58:28'::timestamp AND b.Date<'2013-02-28 08:06:40'::timestamp;

