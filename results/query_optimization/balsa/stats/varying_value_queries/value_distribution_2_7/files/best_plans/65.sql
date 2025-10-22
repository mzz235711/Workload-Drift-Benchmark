/*+ MergeJoin(p u b v)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<69 AND p.CommentCount>1 AND p.CommentCount<34 AND u.DownVotes>356 AND u.DownVotes<450 AND v.CreationDate>'2012-06-04 01:00:26'::timestamp AND v.CreationDate<'2013-09-27 02:50:27'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<10 AND b.Date>'2011-09-25 01:14:43'::timestamp AND b.Date<'2012-02-17 00:44:51'::timestamp;

