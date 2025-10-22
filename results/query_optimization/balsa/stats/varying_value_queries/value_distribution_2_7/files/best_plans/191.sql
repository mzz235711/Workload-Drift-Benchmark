/*+ MergeJoin(p u b v)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<54 AND p.CommentCount>10 AND p.CommentCount<41 AND u.DownVotes>387 AND u.DownVotes<1752 AND v.CreationDate>'2011-01-15 08:00:49'::timestamp AND v.CreationDate<'2012-07-15 05:28:06'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<5 AND b.Date>'2012-12-31 17:31:07'::timestamp AND b.Date<'2014-02-22 18:51:16'::timestamp;

