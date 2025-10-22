/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>72 AND p.Score<123 AND p.CommentCount>8 AND p.CommentCount<37 AND u.DownVotes>99 AND u.DownVotes<844 AND v.CreationDate>'2012-07-21 17:49:59'::timestamp AND v.CreationDate<'2013-07-26 11:14:55'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<4 AND b.Date>'2011-06-06 06:02:29'::timestamp AND b.Date<'2013-10-16 18:45:32'::timestamp;

