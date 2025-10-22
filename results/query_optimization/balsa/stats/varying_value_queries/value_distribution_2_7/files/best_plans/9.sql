/*+ MergeJoin(p u b v)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<165 AND p.CommentCount>11 AND p.CommentCount<17 AND u.DownVotes>243 AND u.DownVotes<1348 AND v.CreationDate>'2010-05-29 13:29:25'::timestamp AND v.CreationDate<'2014-07-01 00:54:18'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<10 AND b.Date>'2013-06-01 01:02:20'::timestamp AND b.Date<'2014-02-04 01:33:43'::timestamp;

