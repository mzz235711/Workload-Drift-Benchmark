/*+ NestLoop(v p u b)
 MergeJoin(v p u)
 MergeJoin(v p)
 SeqScan(v)
 IndexScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>50 AND p.Score<121 AND p.CommentCount>6 AND p.CommentCount<22 AND u.DownVotes>206 AND u.DownVotes<1889 AND v.CreationDate>'2009-08-15 21:34:44'::timestamp AND v.CreationDate<'2011-07-02 00:27:04'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2011-07-05 07:45:12'::timestamp AND b.Date<'2013-10-12 22:40:12'::timestamp;

