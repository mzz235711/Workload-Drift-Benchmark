/*+ MergeJoin(p u b v)
 NestLoop(p u b)
 MergeJoin(p u)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading((((p u) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>109 AND p.Score<166 AND p.CommentCount>5 AND p.CommentCount<12 AND u.DownVotes>14 AND u.DownVotes<1574 AND v.CreationDate>'2011-12-02 09:08:00'::timestamp AND v.CreationDate<'2012-08-12 00:49:49'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<15 AND b.Date>'2014-01-23 09:59:35'::timestamp AND b.Date<'2014-08-29 14:04:41'::timestamp;

