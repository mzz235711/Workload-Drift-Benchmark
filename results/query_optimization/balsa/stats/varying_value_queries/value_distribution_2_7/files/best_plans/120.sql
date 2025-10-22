/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>39 AND p.Score<175 AND p.CommentCount>19 AND p.CommentCount<23 AND u.DownVotes>137 AND u.DownVotes<1898 AND v.CreationDate>'2011-11-27 17:26:17'::timestamp AND v.CreationDate<'2013-07-06 11:38:26'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2012-04-05 13:44:32'::timestamp AND b.Date<'2014-02-22 05:19:36'::timestamp;

