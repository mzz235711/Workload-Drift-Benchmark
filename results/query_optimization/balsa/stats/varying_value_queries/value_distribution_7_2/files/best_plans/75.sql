/*+ NestLoop(v p u b)
 NestLoop(v p u)
 MergeJoin(v p)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-5 AND p.Score<130 AND p.CommentCount>18 AND p.CommentCount<31 AND u.DownVotes>113 AND u.DownVotes<866 AND v.CreationDate>'2010-01-02 22:40:45'::timestamp AND v.CreationDate<'2013-05-15 15:40:43'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<14 AND b.Date>'2012-02-21 08:57:00'::timestamp AND b.Date<'2014-01-28 18:44:08'::timestamp;

