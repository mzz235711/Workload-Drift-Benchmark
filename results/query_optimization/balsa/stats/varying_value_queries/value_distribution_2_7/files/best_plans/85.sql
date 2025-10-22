/*+ HashJoin(p u b v)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-5 AND p.Score<46 AND p.CommentCount>8 AND p.CommentCount<33 AND u.DownVotes>31 AND u.DownVotes<568 AND v.CreationDate>'2010-02-07 01:12:10'::timestamp AND v.CreationDate<'2012-06-02 06:11:15'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<12 AND b.Date>'2013-01-08 20:58:39'::timestamp AND b.Date<'2014-06-24 11:39:21'::timestamp;

