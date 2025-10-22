/*+ MergeJoin(p u b v)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<55 AND p.CommentCount>15 AND p.CommentCount<32 AND u.DownVotes>113 AND u.DownVotes<950 AND v.CreationDate>'2010-09-17 03:01:03'::timestamp AND v.CreationDate<'2012-01-11 04:52:02'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<10 AND b.Date>'2010-11-10 12:57:13'::timestamp AND b.Date<'2014-08-07 21:29:23'::timestamp;

