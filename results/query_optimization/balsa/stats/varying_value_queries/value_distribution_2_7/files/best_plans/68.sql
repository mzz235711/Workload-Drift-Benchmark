/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>36 AND p.Score<121 AND p.CommentCount>14 AND p.CommentCount<40 AND u.DownVotes>172 AND u.DownVotes<216 AND v.CreationDate>'2010-02-06 05:04:01'::timestamp AND v.CreationDate<'2013-09-24 17:12:32'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<13 AND b.Date>'2012-11-14 22:49:19'::timestamp AND b.Date<'2013-12-31 03:14:53'::timestamp;

