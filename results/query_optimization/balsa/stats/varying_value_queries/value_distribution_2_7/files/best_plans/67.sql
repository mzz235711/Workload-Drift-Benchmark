/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>29 AND p.Score<189 AND p.CommentCount>11 AND p.CommentCount<41 AND u.DownVotes>596 AND u.DownVotes<1738 AND v.CreationDate>'2011-10-01 08:35:24'::timestamp AND v.CreationDate<'2014-06-14 19:46:14'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<13 AND b.Date>'2011-11-03 06:45:01'::timestamp AND b.Date<'2013-06-13 17:55:11'::timestamp;

