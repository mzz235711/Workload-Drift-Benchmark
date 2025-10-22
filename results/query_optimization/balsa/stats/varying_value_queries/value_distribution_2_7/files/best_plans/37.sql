/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>9 AND p.Score<133 AND p.CommentCount>5 AND p.CommentCount<39 AND u.DownVotes>411 AND u.DownVotes<792 AND v.CreationDate>'2011-08-21 03:56:03'::timestamp AND v.CreationDate<'2014-02-04 11:22:52'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<10 AND b.Date>'2012-07-02 09:31:16'::timestamp AND b.Date<'2014-05-03 04:13:48'::timestamp;

