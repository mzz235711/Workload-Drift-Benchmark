/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<42 AND p.CommentCount>5 AND p.CommentCount<38 AND u.DownVotes>110 AND u.DownVotes<1493 AND v.CreationDate>'2011-04-27 17:13:06'::timestamp AND v.CreationDate<'2013-02-16 11:22:52'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<15 AND b.Date>'2012-08-22 01:12:32'::timestamp AND b.Date<'2014-04-13 04:30:41'::timestamp;

