/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-8 AND p.Score<30 AND p.CommentCount>2 AND p.CommentCount<41 AND u.DownVotes>8 AND u.DownVotes<329 AND v.CreationDate>'2009-06-02 20:15:55'::timestamp AND v.CreationDate<'2013-04-06 03:47:22'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<15 AND b.Date>'2011-10-08 15:34:51'::timestamp AND b.Date<'2012-01-17 08:53:24'::timestamp;

