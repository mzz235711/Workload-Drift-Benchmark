/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<182 AND p.CommentCount>1 AND p.CommentCount<37 AND u.DownVotes>535 AND u.DownVotes<1708 AND v.CreationDate>'2013-08-10 21:20:25'::timestamp AND v.CreationDate<'2013-12-17 22:49:21'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<11 AND b.Date>'2010-12-29 00:44:19'::timestamp AND b.Date<'2012-03-30 05:13:31'::timestamp;

